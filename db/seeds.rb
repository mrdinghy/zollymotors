# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
manufacturers = Manufacturer.create([
                                        { name: 'Audi' },
                                        { name: 'BMW' },
                                        { name: 'Jaguar' },
                                        { name: 'Landrover' },
                                        { name: 'Mercedes' },
                                        { name: 'Saab' },
                                        { name: 'Mini' },
                                        { name: 'Porsche' },
                                        { name: 'Volkswagen' },
                                        { name: 'Volvo' },
                                        { name: 'Acura' },
                                        { name: 'Honda' },
                                        { name: 'Lexus' },
                                        { name: 'Mazda' },
                                        { name: 'Nissan' },
                                        { name: 'Toyoto' },
                                        { name: 'Saturn' },
                                        { name: 'GM' },
                                        { name: 'Ford' },
                                        { name: 'Chrysler' }
                                    ])


services = Service.create([
                              { name: 'Scheduled Mileage Maintenance' },
                              { name: 'Technology-based Diagnosis' },
                              { name: 'Repairs' },
                              { name: 'Pre-Purchase Inspection' },
                              { name: 'Complete Body Repair' }


                          ])


siteblurbs = Siteblurb.create([
                                  {
                                      name: 'Philosophy1',
                                      blurb: 'As an alternative to dealer servicing and maintenance that is often impersonal, over-priced, and sometimes un-necessary,  our goal is to provide professional, personalized, reasonable  and fixed price (as opposed to an hourly charge) service and maintenance for your vehicle in a timely manner as if you were a member of our own family.  By providing complete and accurate estimates for repairs and maintenance that are only performed with your approval we are able to return your vehicle to you in a timely manner and in safe and reliable operating condition.  We do not believe in re-building your vehicle to new condition at every visit, nor to performing routine maintenance prematurely as either can add considerably to your maintenance and repair costs over the life of your vehicle ownership.'
                                  },
                                  {
                                      name: 'Philosophy2',
                                      blurb: 'We are a 40 year old family owned business specializing in the repair of European automobiles.  In our efforts to provide a full-service facility our clean, fully equipped shop allows our ASE nationally certified technicians to provide expert servicing on your vehicle utilizing the latest in equipment and training.'
                                  },
                                  {
                                      name: 'Philosophy3',
                                      blurb: 'Over the years, as a result of the many requests from our customers to work on other makes and models of vehicles within their families, we have gained considerable expertise in the repair of Japanese and Domestic vehicles as well.'
                                  },

                              ])
